CloudFormation
================

## Why are there comments in the json?
These templates gets really big and sometime it is just not self explained.  We
are putting comments to clarify certain parts of it.

To get rid of the comments you can run it through the `jsmin` tool and the `jq`
tool to prettify it again.

```
jsmin base_vpc.json | jq . > base_vpc.min.json
```  

Then you would submit the `base_vpc.min.json` file.
