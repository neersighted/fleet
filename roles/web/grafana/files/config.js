define(['settings'],
function (Settings) {
  return new Settings({
    datasources: {
      influxdb: {
        type: 'influxdb',
        url: "http://localhost:8086/db/metrics",
        username: 'root',
        password: 'root',
      },
      grafana: {
        type: 'influxdb',
        url: "http://localhost:8086/db/grafana",
        username: 'root',
        password: 'root',
        grafanaDB: true
      },
    },

    default_route: '/dashboard/file/default.json',
    unsaved_changes_warning: true,

    search: {
      max_results: 20
    },
    playlist_timespan: "1m",

    admin: {
      password: ''
    },

    plugins: {
      panels: []
    }
  });
});
