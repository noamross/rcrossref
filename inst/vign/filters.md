## Crossref Filter Names

These are associated with the Fundref API

Since these Crossref options use dashes in the names in the API, we provide a crosswalk to these so that you can use underscores wherever they use dashes. Additionally, using colons is not very R like, so if Crossref requires `has-funder:true`, just do `has-funder=TRUE` in R. Pass these options in to the `cr_fundref_works()` function in the filter parameter as a list, e.g., `filter=list(has_funder=TRUE, has_full_text=TRUE)`

Filters allow you to narrow queries. All filter results are lists.  The following filters are supported:

| filter     | possible values | description|
|:-----------|:----------------|:-----------|
| `has-funder` | logical | metadata which includes one or more funder entry |
| `funder` | `{funder_id}` | metadata which include the `{funder_id}` in FundRef data |
| `prefix` | `{owner_prefix}` | metadata belonging to a DOI owner prefix `{owner_prefix}` (e.g. `10.1016` ) |
| `member` | `{member_id}` | metadata belonging to a CrossRef member |
| `from-index-date` | `{date}` | metadata indexed since (inclusive) `{date}` |
| `until-index-date` | `{date}` | metadata indexed before (inclusive) `{date}` |
| `from-deposit-date` | `{date}` | metadata last (re)deposited since (inclusive) `{date}` |
| `until-deposit-date` | `{date}` | metadata last (re)deposited before (inclusive) `{date}` |
| `from-update-date` | `{date}` | Metadata updated since (inclusive) `{date}`. Currently the same as `from-deposit-date`. |
| `until-update-date` | `{date}` | Metadata updated before (inclusive) `{date}`. Currently the same as `until-deposit-date`. |
| `from-first-deposit-date` | `{date}` | metadata first deposited since (inclusive) `{date}` [^*] |
| `until-first-deposit-date` | `{date}` | metadata first deposited before (inclusive) `{date}` [^*] |
| `from-pub-date` | `{date}` | metadata where published date is since (inclusive) `{date}` |
| `until-pub-date` | `{date}` | metadata where published date is before (inclusive)  `{date}` |
| `has-license` | | metadata that includes any `<license_ref>` elements. |
| `license.url` | `{url}` | metadata where `<license_ref>` value equals `{url}` |
| `license.version` | `{string}` | metadata where the `<license_ref>`'s `applies_to` attribute  is `{string}`|
| `license.delay` | `{integer}` | metadata where difference between publication date and the `<license_ref>`'s `start_date` attribute is <= `{integer}` (in days)|
| `has-full-text` |  | metadata that includes any full text `<resource>` elements. |
| `full-text.version` | `{string}`  | metadata where `<resource>` element's `content_version` attribute is `{string}`. |
| `full-text.type` | `{mime_type}`  | metadata where `<resource>` element's `content_type` attribute is `{mime_type}` (e.g. `application/pdf`). |
| `public-references` | | metadata where publishers allow references to be distributed publically. [^*] |
| `has-references` | | metadata for works that have a list of references |
| `has-archive` | | metadata which include name of archive partner |
| `archive` | `{string}` | metadata which where value of archive partner is `{string}` |
| `has-orcid` | | metadata which includes one or more ORCIDs |
| `orcid` | `{orcid}` | metadata where `<orcid>` element's value = `{orcid}` |
| `issn` | `{issn}` | metadata where record has an ISSN = `{issn}`. Format is `xxxx-xxxx`. |
| `type` | `{type}` | metadata records whose type = `{type}`. Type must be an ID value from the list of types returned by the `/types` resource |
| `directory` | `{directory}` | metadata records whose article or serial are mentioned in the given `{directory}`. Currently the only supported value is `doaj`. |
| `doi` | `{doi}` | metadata describing the DOI `{doi}` |
| `updates` | `{doi}` | metadata for records that represent editorial updates to the DOI `{doi}` |
| `is-update` | | metadata for records that represent editorial updates |
| `has-update-policy` | | metadata for records that include a link to an editorial update policy |

[^*]: Not implemented yet.
