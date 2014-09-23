define(['settings'],
function (Settings) {
  return new Settings({
    datasources: {
      influxdb: {
        type: 'influxdb',
        url: 'http://{{ influxdb.host }}:{{ influxdb.port }}/db/{{ influxdb.database }}',
        username: 'root',
        password: 'root'
      },
      graphite: {
        type: 'graphite',
        url: 'http://{{ graphite.host }}:{{ graphite.port }}'
      },
      elasticsearch: {
        type: 'elasticsearch',
        url: 'http://{{ elasticsearch.host }}:{{ elasticsearch.port }}',
        index: '{{ elasticsearch.index }}',
        grafanaDB: yes
      }
    },

    default_route: '/dashboard/file/default.json',
    unsaved_changes_warning: yes,

    playlist_timespan: "1m",
    search: { max_results: 20 },

    admin: { password: '' },
    plugins: { panels: [] }
  });
});
