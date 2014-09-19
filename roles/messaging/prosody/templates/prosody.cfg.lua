modules_enabled = {
  "s2s";         -- Handle server connections
  "c2s";         -- Handle client connections
  -- "bosh";     -- Handle client connections (over HTTP)
  "saslauth";    -- Authentication for clients and servers
  "dialback";    -- Authentication for servers (thorough DNS)
  "tls";         -- Encryption for clients and servers
  "compression"; -- Compression for clients and servers

  "register"; -- Allow in-band registration/password changes
  "roster";   -- Allow users to have a roster
  "privacy";  -- Support privacy lists
  "private";  -- Generic, private XML storage
  "vcard";    -- User contant information
  -- "pep";   -- Mood, activity, music, and more
  "offline";  -- Store offline messages

  "ping";     -- Pong pings
  "version";  -- Report version
  "uptime";   -- Report uptime
  "time";     -- Report time
  "announce"; -- Annouce to all users
  "adhoc";    -- Allow ad-hoc commands
  -- "disco"; -- Service discovery

  "posix";        -- POSIX functionality, sends server to background, enables syslog, etc.
  "admin_adhoc";  -- Allows administration via XMPP
  "admin_telnet"; -- Allow adminstration via a local port

  -- "groups"; -- Shared roster support
  -- "welcome"; -- Welcome users who register accounts
  -- "watchregistrations"; -- Alert admins of registrations
  -- "motd"; -- Send a message to users when they log in
};
modules_disabled = { };


daemonize = true;
pidfile = "/run/prosody/prosody.pid";

use_libevent = true;


allow_registration = false; -- Block all registration


ssl = {
  certificate = "{{ ssl.cert }}";
  key         = "{{ ssl.key }}";
}

s2s_require_encryption = true -- Require servers to use secure connections
c2s_require_encryption = true -- Require clients to use secure connections

s2s_secure_auth = false -- Do not require servers to have valid certificates
s2s_insecure_domains = { "gmail.com" }
s2s_secure_domains = { "jabber.org", "xmpp.org" }


authentication = "internal_hashed"
storage = "internal"
--sql = { driver = "SQLite3", database = "prosody.sqlite" }
--sql = { driver = "MySQL", database = "prosody", username = "prosody", password = "secret", host = "localhost" }
--sql = { driver = "PostgreSQL", database = "prosody", username = "prosody", password = "secret", host = "localhost" }
--

log = {
  info = "/var/log/prosody/prosody.log";
  error = "/var/log/prosody/prosody.err";
  { levels = { "warning" }; to = "syslog";  };
}


admins = {
{% for admin in admins %}
  "{{ admin }}",
{% endfor %}
}

{% for hostname, vhost in virtualhosts.iteritems() %}
VirtualHost "{{ hostname }}"
  ssl = {
    certificate = "{{ vhost.cert }}";
    key         = "{{ vhost.key }}";
  }
{% endfor %}


Include "conf.d/*.cfg.lua"
