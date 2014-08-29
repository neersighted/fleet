define(['settings'],
function (Settings) {
  return new Settings({
    elasticsearch: 'http://{{ elasticsearch.host }}:{{ elasticsearch.port }}',
    kibana_index:  '{{ elasticsearch.index }}',

    default_route: '/dashboard/elasticsearch/Overview',

    panel_names: [
      'histogram',
      'map',
      'goal',
      'table',
      'filtering',
      'timepicker',
      'text',
      'hits',
      'column',
      'trends',
      'bettermap',
      'query',
      'terms',
      'stats',
      'sparklines'
    ]
  });
});
