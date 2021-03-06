% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SpecimenClient.r
\docType{data}
\name{SpecimenClient}
\alias{SpecimenClient}
\title{Specimen operations}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
SpecimenClient
}
\description{
Client class for nbaR.Specimen objects
}
\section{Fields}{

\describe{
\item{\code{basePath}}{Stores url path of the request.}

\item{\code{userAgent}}{Set the user agent of the request.}
}}

\section{Methods}{

\describe{
\item{\code{ count }}{

  Get the number of specimens matching a given condition;
  Conditions given as query parameters or a querySpec JSON.

    Parameters:
    \itemize{
        \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ integer }
}
\item{\code{ count_distinct_values }}{

  Count the distinct number of values that exist for a given field;
  .

    Parameters:
    \itemize{
        \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ integer }
}
\item{\code{ count_distinct_values_per_group }}{

  Count the distinct number of field values that exist per the given field to group by;
  .

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ list }
}
\item{\code{ download_query }}{

  Dynamic download service: Query for specimens and return result as a stream ...;
  Query with query parameters or querySpec JSON. ....

    Parameters:
    \itemize{
        \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ Specimen }
}
\item{\code{ dwca_get_data_set }}{

  Download dataset as Darwin Core Archive File;
  Available datasets can be queried with /specimen/dwca/getDataSetNames. Response saved to &lt;datasetname&gt;-&lt;yyyymmdd&gt;.dwca.zip.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{  }
}
\item{\code{ dwca_get_data_set_names }}{

  Retrieve the names of all available datasets;
  Individual datasets can then be downloaded with /dwca/getDataSet/{dataset}.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ character }
}
\item{\code{ dwca_query }}{

  Dynamic download service: Query for specimens and return result as Darwin Core Archive File;
  Query with query parameters or querySpec JSON. Response saved to nba-specimens.dwca.zip.

    Parameters:
    \itemize{
        \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{  }
}
\item{\code{ exists }}{

  Returns whether or not a unitID for a specimen exists;
  Returns either true or false.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ logical }
}
\item{\code{ find }}{

  Find a specimen by id;
  If found, returns a single specimen.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ Specimen }
}
\item{\code{ find_by_ids }}{

  Find specimens by ids;
  Given multiple ids, returns a list of specimen.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ Specimen }
}
\item{\code{ find_by_unit_id }}{

  Find a specimen by unitID;
  Get a specimen by its unitID. Returns a list of specimens since unitIDs are not strictly unique.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ Specimen }
}
\item{\code{ get_distinct_values }}{

  Get all different values that exist for a field;
  A list of all fields for specimen documents can be retrieved with /metadata/getFieldInfo.

    Parameters:
    \itemize{
        \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ list }
}
\item{\code{ get_distinct_values_per_group }}{

  Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by;
  .

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ list }
}
\item{\code{ get_field_info }}{

  Returns extended information for each field of a specimen document;
  Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ list }
}
\item{\code{ get_ids_in_collection }}{

  Retrieve all ids within a &#39;special collection&#39; of specimens;
  Available collections can be queried with /getNamedCollections.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ character }
}
\item{\code{ get_named_collections }}{

  Retrieve the names of all &#39;special collections&#39; of specimens;
  .

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ character }
}
\item{\code{ get_paths }}{

  Returns the full path of all fields within a document;
  See also metadata/getFieldInfo for all allowed operators per field.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ character }
}
\item{\code{ get_setting }}{

  Get the value of an NBA setting;
  All settings can be queried with /metadata/getSettings.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ list }
}
\item{\code{ get_settings }}{

  List all publicly available configuration settings for the NBA;
  The value of a specific setting can be queried with metadata/getSetting/{name}.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ list }
}
\item{\code{ group_by_scientific_name }}{

  Aggregates Taxon and Specimen documents according to their scientific names;
  Returns a list with ScientificNameGroups, which contain Taxon and Specimen documents that share a scientific name.

    Parameters:
    \itemize{
        \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ QueryResult }
}
\item{\code{ is_operator_allowed }}{

  Checks if a given operator is allowed for a given field;
  See also metadata/getFieldInfo.

    Parameters:
    \itemize{

        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ logical }
}
\item{\code{ query }}{

  Query for specimens;
  Search for specimens (GET) using query parameters or a querySpec JSON.

    Parameters:
    \itemize{
        \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
        \item \code{ ... } : additional parameters passed to httr::GET
    }
    Returns:
        \code{ QueryResult }
}
}
}

\keyword{datasets}
