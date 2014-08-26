define(['settings'],
function (Settings) {
  return new Settings({
    datasources: {
      graphite: {
        type: 'graphite',
        url: "http://localhost:8080",
      },
      elasticsearch: {
        type: 'elasticsearch',
        url: "http://localhost:9200",
        index: 'grafana',
        grafanaDB: true,
      }
    },

    default_route: '/dashboard/file/default.json',
    unsaved_changes_warning: true,

    playlist_timespan: "1m",
    search: { max_results: 20 },

    admin: { password: '' },
    plugins: { panels: [] }
  });
});
