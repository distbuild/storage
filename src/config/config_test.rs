#[test]
fn test_config() {
    let mut c = super::config::Config {
        config_file: "".to_string(),
        ..Default::default()
    };

    assert!(c.config().is_err());

    let mut c = super::config::Config {
        config_file: "config.txt".to_string(),
        ..Default::default()
    };

    assert!(c.config().is_err());

    let mut c = super::config::Config {
        config_file: "/config.yml".to_string(),
        ..Default::default()
    };

    assert!(c.config().is_err());

    let n = std::path::Path::new(&std::env::current_dir().unwrap())
        .join("src")
        .join("config")
        .join("config.yml");

    let mut c = super::config::Config {
        config_file: n.into_os_string().into_string().unwrap(),
        ..Default::default()
    };

    assert!(c.config().is_ok());
}

#[test]
fn test_version() {
    let mut c = super::config::Config {
        version_info: "".to_string(),
        ..Default::default()
    };

    assert!(c.version().is_ok());
}
