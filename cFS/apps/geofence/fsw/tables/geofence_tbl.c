//
// Created by Swee Balachandran on 11/13/17.
//

#include "cfe.h"
#include "cfe_tbl_filedef.h"  /* Required to obtain the CFE_TBL_FILEDEF macro definition */

#include "geofence_table.h"


GeofenceTable_t Geofence_TblStruct = {
   .lookahead = 3,   // lookahead time in seconds
   .hbuffer = 1,   // hbuffer
   .vbuffer = 1,   // vbuffer
   .hstepback = 1,   // hstepback
   .vstepback = 1    // vstepback
};


/*
** The macro below identifies:
**    1) the data structure type to use as the table image format
**    2) the name of the table to be placed into the cFE Table File Header
**    3) a brief description of the contents of the file image
**    4) the desired name of the table image binary file that is cFE compatible
*/
CFE_TBL_FILEDEF(Geofence_TblStruct, GEOFENCE.GeofenceTable, Geofence parameters, geofence_tbl.tbl )
