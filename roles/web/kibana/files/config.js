define(['settings'],
function (Settings) {
  return new Settings({
    elasticsearch: 'http://localhost:9200',
    kibana_index:  'kibana',

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
