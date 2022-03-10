use {
    actix_files::Files,
    actix_web::{middleware::Logger, App, HttpServer},
    std::io,
    actix_web_static_files::ResourceFiles
};

include!(concat!(env!("OUT_DIR"), "/generated.rs"));

#[actix_web::main]
async fn main() -> io::Result<()> {
    env_logger::init_from_env(env_logger::Env::new().default_filter_or("info"));

    log::info!("starting HTTP server at http://localhost:8080");

    HttpServer::new(|| {
        App::new()
            .service(ResourceFiles::new("/binaries", generated))
            .service(Files::new("/", "./static").index_file("index.html"))
            .wrap(Logger::default())
    })
    .bind(("0.0.0.0", 8080))?
    .run()
    .await
}
