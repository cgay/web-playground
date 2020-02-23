Module: dylan-user

define library web-playground
  use common-dylan;
  use dsp;
  use hash-algorithms;
  use http-common;
  use http-server;
  use io,
    import: { format, streams };
  use strings;
  use system,
    import: { file-system, locators, operating-system };
  use xml-parser;
  use uuid;
end library;

define module web-playground
  use common-dylan;
  use dsp;
  use file-system,
    prefix: "fs/";
  use format,
    import: { format, format-to-string };
  use hash-algorithms,
    import: { hexdigest, md5 };
  use http-common,
    import: { get-attribute, quote-html, set-attribute, set-header };
  use http-server,
    import: { <http-server>,
              add-resource,
              current-request,
              current-response,
              get-attr,
              get-query-value,
              get-session,
              http-server-main,
              log-debug,
              output,
              page-context,
              process-config-element,
              quote-html,
              respond-to-post,
              server-root };
  use locators,
    import: { <directory-locator>,
              <file-locator>,
              merge-locators,
              simplify-locator,
              subdirectory-locator };
  use operating-system,
    prefix: "os/";
  use streams,
    import: { <stream>, read-to-end, with-output-to-string, write };
  use strings,
    import: { find-substring, starts-with?, strip-right };
  use xml-parser,
    rename: { <element> => xml/<element> };
  use uuid,
    import: { make-uuid4 };
end module;
