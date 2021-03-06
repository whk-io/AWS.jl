# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: redshift_data
using AWS.Compat
using AWS.UUIDs

"""
    CancelStatement()

Cancels a running query. To be canceled, a query must be running. 

# Required Parameters
- `Id`: The identifier of the SQL statement to cancel. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. This identifier is returned by ExecuteStatment and ListStatements. 

"""
cancel_statement(Id; aws_config::AWSConfig=global_aws_config()) = redshift_data("CancelStatement", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
cancel_statement(Id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = redshift_data("CancelStatement", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), args)); aws_config=aws_config)

"""
    DescribeStatement()

Describes the details about a specific instance when a query was run by the Amazon Redshift Data API. The information includes when the query started, when it finished, the query status, the number of rows returned, and the SQL statement. 

# Required Parameters
- `Id`: The identifier of the SQL statement to describe. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. This identifier is returned by ExecuteStatment and ListStatements. 

"""
describe_statement(Id; aws_config::AWSConfig=global_aws_config()) = redshift_data("DescribeStatement", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
describe_statement(Id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = redshift_data("DescribeStatement", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), args)); aws_config=aws_config)

"""
    DescribeTable()

Describes the detailed information about a table from metadata in the cluster. The information includes its columns. A token is returned to page through the column list. Depending on the authorization method, use one of the following combinations of request parameters:    AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.   

# Required Parameters
- `ClusterIdentifier`: The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. 

# Optional Parameters
- `Database`: The name of the database. This parameter is required when authenticating using temporary credentials.
- `DbUser`: The database user name. This parameter is required when authenticating using temporary credentials. 
- `MaxResults`: The maximum number of tables to return in the response. If more tables exist than fit in one response, then NextToken is returned to page through the results. 
- `NextToken`: A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. 
- `Schema`: The schema that contains the table. If no schema is specified, then matching tables for all schemas are returned. 
- `SecretArn`: The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. 
- `Table`: The table name. If no table is specified, then all tables for all matching schemas are returned. If no table and no schema is specified, then all tables for all schemas in the database are returned
"""
describe_table(ClusterIdentifier; aws_config::AWSConfig=global_aws_config()) = redshift_data("DescribeTable", Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier); aws_config=aws_config)
describe_table(ClusterIdentifier, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = redshift_data("DescribeTable", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier), args)); aws_config=aws_config)

"""
    ExecuteStatement()

Runs an SQL statement, which can be data manipulation language (DML) or data definition language (DDL). This statement must be a single SQL statement. Depending on the authorization method, use one of the following combinations of request parameters:    AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.   

# Required Parameters
- `ClusterIdentifier`: The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. 
- `Sql`: The SQL statement text to run. 

# Optional Parameters
- `Database`: The name of the database. This parameter is required when authenticating using temporary credentials.
- `DbUser`: The database user name. This parameter is required when authenticating using temporary credentials. 
- `SecretArn`: The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. 
- `StatementName`: The name of the SQL statement. You can name the SQL statement when you create it to identify the query. 
- `WithEvent`: A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs. 
"""
execute_statement(ClusterIdentifier, Sql; aws_config::AWSConfig=global_aws_config()) = redshift_data("ExecuteStatement", Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier, "Sql"=>Sql); aws_config=aws_config)
execute_statement(ClusterIdentifier, Sql, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = redshift_data("ExecuteStatement", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier, "Sql"=>Sql), args)); aws_config=aws_config)

"""
    GetStatementResult()

Fetches the temporarily cached result of an SQL statement. A token is returned to page through the statement results. 

# Required Parameters
- `Id`: The identifier of the SQL statement whose results are to be fetched. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. This identifier is returned by ExecuteStatment and ListStatements. 

# Optional Parameters
- `NextToken`: A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. 
"""
get_statement_result(Id; aws_config::AWSConfig=global_aws_config()) = redshift_data("GetStatementResult", Dict{String, Any}("Id"=>Id); aws_config=aws_config)
get_statement_result(Id, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = redshift_data("GetStatementResult", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Id"=>Id), args)); aws_config=aws_config)

"""
    ListDatabases()

List the databases in a cluster. A token is returned to page through the database list. Depending on the authorization method, use one of the following combinations of request parameters:    AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.   

# Required Parameters
- `ClusterIdentifier`: The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. 

# Optional Parameters
- `Database`: The name of the database. This parameter is required when authenticating using temporary credentials. 
- `DbUser`: The database user name. This parameter is required when authenticating using temporary credentials. 
- `MaxResults`: The maximum number of databases to return in the response. If more databases exist than fit in one response, then NextToken is returned to page through the results. 
- `NextToken`: A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. 
- `SecretArn`: The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. 
"""
list_databases(ClusterIdentifier; aws_config::AWSConfig=global_aws_config()) = redshift_data("ListDatabases", Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier); aws_config=aws_config)
list_databases(ClusterIdentifier, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = redshift_data("ListDatabases", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier), args)); aws_config=aws_config)

"""
    ListSchemas()

Lists the schemas in a database. A token is returned to page through the schema list. Depending on the authorization method, use one of the following combinations of request parameters:    AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.   

# Required Parameters
- `ClusterIdentifier`: The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. 
- `Database`: The name of the database. This parameter is required when authenticating using temporary credentials. 

# Optional Parameters
- `DbUser`: The database user name. This parameter is required when authenticating using temporary credentials. 
- `MaxResults`: The maximum number of schemas to return in the response. If more schemas exist than fit in one response, then NextToken is returned to page through the results. 
- `NextToken`: A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. 
- `SchemaPattern`: A pattern to filter results by schema name. Within a schema pattern, \"%\" means match any substring of 0 or more characters and \"_\" means match any one character. Only schema name entries matching the search pattern are returned. 
- `SecretArn`: The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. 
"""
list_schemas(ClusterIdentifier, Database; aws_config::AWSConfig=global_aws_config()) = redshift_data("ListSchemas", Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier, "Database"=>Database); aws_config=aws_config)
list_schemas(ClusterIdentifier, Database, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = redshift_data("ListSchemas", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier, "Database"=>Database), args)); aws_config=aws_config)

"""
    ListStatements()

List of SQL statements. By default, only finished statements are shown. A token is returned to page through the statement list. 

# Optional Parameters
- `MaxResults`: The maximum number of SQL statements to return in the response. If more SQL statements exist than fit in one response, then NextToken is returned to page through the results. 
- `NextToken`: A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. 
- `StatementName`: The name of the SQL statement specified as input to ExecuteStatement to identify the query. You can list multiple statements by providing a prefix that matches the beginning of the statement name. For example, to list myStatement1, myStatement2, myStatement3, and so on, then provide the a value of myStatement. Data API does a case-sensitive match of SQL statement names to the prefix value you provide. 
- `Status`: The status of the SQL statement to list. Status values are defined as follows:    ABORTED - The query run was stopped by the user.    ALL - A status value that includes all query statuses. This value can be used to filter results.    FAILED - The query run failed.    FINISHED - The query has finished running.    PICKED - The query has been chosen to be run.    STARTED - The query run has started.    SUBMITTED - The query was submitted, but not yet processed.   
"""
list_statements(; aws_config::AWSConfig=global_aws_config()) = redshift_data("ListStatements"; aws_config=aws_config)
list_statements(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = redshift_data("ListStatements", args; aws_config=aws_config)

"""
    ListTables()

List the tables in a database. If neither SchemaPattern nor TablePattern are specified, then all tables in the database are returned. A token is returned to page through the table list. Depending on the authorization method, use one of the following combinations of request parameters:    AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret.    Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the redshift:GetClusterCredentials operation is required to use this method.   

# Required Parameters
- `ClusterIdentifier`: The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. 
- `Database`: The name of the database. This parameter is required when authenticating using temporary credentials.

# Optional Parameters
- `DbUser`: The database user name. This parameter is required when authenticating using temporary credentials. 
- `MaxResults`: The maximum number of tables to return in the response. If more tables exist than fit in one response, then NextToken is returned to page through the results. 
- `NextToken`: A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. 
- `SchemaPattern`: A pattern to filter results by schema name. Within a schema pattern, \"%\" means match any substring of 0 or more characters and \"_\" means match any one character. Only schema name entries matching the search pattern are returned. If SchemaPattern is not specified, then all tables that match TablePattern are returned. If neither SchemaPattern or TablePattern are specified, then all tables are returned. 
- `SecretArn`: The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. 
- `TablePattern`: A pattern to filter results by table name. Within a table pattern, \"%\" means match any substring of 0 or more characters and \"_\" means match any one character. Only table name entries matching the search pattern are returned. If TablePattern is not specified, then all tables that match SchemaPatternare returned. If neither SchemaPattern or TablePattern are specified, then all tables are returned. 
"""
list_tables(ClusterIdentifier, Database; aws_config::AWSConfig=global_aws_config()) = redshift_data("ListTables", Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier, "Database"=>Database); aws_config=aws_config)
list_tables(ClusterIdentifier, Database, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = redshift_data("ListTables", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClusterIdentifier"=>ClusterIdentifier, "Database"=>Database), args)); aws_config=aws_config)
