
### <a name="engine">⚙️ Script Engine Specifics</a>   
The Engine (or the algorithm) will only get rid of completely empty folders that do not have anything inside of them.   
Folders containing other folders (_even empty ones_) will be considered non-empty.   
This is also exactly _why_ the searching algorithm starts at the very bottom of the folder tree.   
