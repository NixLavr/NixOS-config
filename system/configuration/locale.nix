{
  inputs,
  config,
  pkgs,
  ...
}: {
  # Time and Locale #
  time.timeZone = "Asia/Almaty";
  i18n.defaultLocale = "ru_RU.UTF-8";
  console = {
    font = "Lat2-Terminus16";
  };
}
