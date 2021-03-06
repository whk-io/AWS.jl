# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: mediastore_data
using AWS.Compat
using AWS.UUIDs

"""
    DeleteObject()

Deletes an object at the specified path.

# Required Parameters
- `Path`: The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;

"""
delete_object(Path; aws_config::AWSConfig=global_aws_config()) = mediastore_data("DELETE", "/$(Path)"; aws_config=aws_config)
delete_object(Path, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediastore_data("DELETE", "/$(Path)", args; aws_config=aws_config)

"""
    DescribeObject()

Gets the headers for an object at the specified path.

# Required Parameters
- `Path`: The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;

"""
describe_object(Path; aws_config::AWSConfig=global_aws_config()) = mediastore_data("HEAD", "/$(Path)"; aws_config=aws_config)
describe_object(Path, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediastore_data("HEAD", "/$(Path)", args; aws_config=aws_config)

"""
    GetObject()

Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.

# Required Parameters
- `Path`: The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt; For example, to upload the file mlaw.avi to the folder path premiumcanada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the AWS Elemental MediaStore User Guide. The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. 

# Optional Parameters
- `Range`: The range bytes of an object to retrieve. For more information about the Range header, see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35. AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.
"""
get_object(Path; aws_config::AWSConfig=global_aws_config()) = mediastore_data("GET", "/$(Path)"; aws_config=aws_config)
get_object(Path, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediastore_data("GET", "/$(Path)", args; aws_config=aws_config)

"""
    ListItems()

Provides a list of metadata entries about folders and objects in the specified folder.

# Optional Parameters
- `MaxResults`: The maximum number of results to return per API request. For example, you submit a ListItems request with MaxResults set at 500. Although 2,000 items match your request, the service returns no more than the first 500 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 1,000 results per page.
- `NextToken`: The token that identifies which batch of results that you want to see. For example, you submit a ListItems request with MaxResults set at 500. The service returns the first batch of results (up to 500) and a NextToken value. To see the next batch of results, you can submit the ListItems request a second time and specify the NextToken value. Tokens expire after 15 minutes.
- `Path`: The path in the container from which to retrieve items. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
"""
list_items(; aws_config::AWSConfig=global_aws_config()) = mediastore_data("GET", "/"; aws_config=aws_config)
list_items(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = mediastore_data("GET", "/", args; aws_config=aws_config)

"""
    PutObject()

Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.

# Required Parameters
- `Body`: The bytes to be stored. 
- `Path`: The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt; For example, to upload the file mlaw.avi to the folder path premiumcanada in the container movies, enter the path premium/canada/mlaw.avi. Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing premium/usa subfolder. If you specify premium/canada, the service creates a canada subfolder in the premium folder. You then have two subfolders, usa and canada, in the premium folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the AWS Elemental MediaStore User Guide. The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. 

# Optional Parameters
- `Cache-Control`: An optional CacheControl header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9. Headers with a custom user-defined value are also accepted.
- `Content-Type`: The content type of the object.
- `x-amz-storage-class`: Indicates the storage class of a Put request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.
- `x-amz-upload-availability`: Indicates the availability of an object while it is still uploading. If the value is set to streaming, the object is available for downloading after some initial buffering but before the object is uploaded completely. If the value is set to standard, the object is available for downloading only when it is uploaded completely. The default value for this header is standard. To use this header, you must also set the HTTP Transfer-Encoding header to chunked.
"""
put_object(Body, Path; aws_config::AWSConfig=global_aws_config()) = mediastore_data("PUT", "/$(Path)", Dict{String, Any}("Body"=>Body); aws_config=aws_config)
put_object(Body, Path, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = mediastore_data("PUT", "/$(Path)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Body"=>Body), args)); aws_config=aws_config)
