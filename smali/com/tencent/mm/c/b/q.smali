.class public abstract Lcom/tencent/mm/c/b/q;
.super Lcom/tencent/mm/sdk/e/ad;
.source "SourceFile"


# static fields
.field public static final bRN:[Ljava/lang/String;

.field private static final bRT:I

.field private static final bSV:I

.field private static final bSe:I

.field private static final bTh:I

.field private static final bUx:I

.field private static final bWk:I

.field private static final bWl:I

.field private static final bWm:I

.field private static final bWn:I

.field private static final bWo:I

.field private static final bWp:I

.field private static final bWq:I

.field private static final bWr:I

.field private static final bWs:I

.field private static final bWt:I

.field private static final bWu:I

.field private static final bWv:I

.field private static final bWw:I

.field private static final bWx:I


# instance fields
.field public field_edittime:J

.field public field_ext:Ljava/lang/String;

.field public field_favProto:Lcom/tencent/mm/protocal/a/fx;

.field public field_flag:I

.field public field_fromUser:Ljava/lang/String;

.field public field_id:I

.field public field_itemStatus:I

.field public field_localId:J

.field public field_localSeq:I

.field public field_realChatName:Ljava/lang/String;

.field public field_sourceCreateTime:J

.field public field_sourceId:Ljava/lang/String;

.field public field_sourceType:I

.field public field_toUser:Ljava/lang/String;

.field public field_type:I

.field public field_updateSeq:I

.field public field_updateTime:J

.field public field_xml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE INDEX IF NOT EXISTS FavItemInfo_id_Index ON FavItemInfo(id)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE INDEX IF NOT EXISTS FavItemInfo_type_Index ON FavItemInfo(type)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CREATE INDEX IF NOT EXISTS FavItemInfo_updateSeq_Index ON FavItemInfo(updateSeq)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CREATE INDEX IF NOT EXISTS FavItemInfo_flag_Index ON FavItemInfo(flag)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CREATE INDEX IF NOT EXISTS FavItemInfo_sourceId_Index ON FavItemInfo(sourceId)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/c/b/q;->bRN:[Ljava/lang/String;

    .line 135
    const-string v0, "localId"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWk:I

    .line 136
    const-string v0, "id"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWl:I

    .line 137
    const-string v0, "type"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bRT:I

    .line 138
    const-string v0, "localSeq"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWm:I

    .line 139
    const-string v0, "updateSeq"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWn:I

    .line 140
    const-string v0, "flag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bUx:I

    .line 141
    const-string v0, "sourceId"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWo:I

    .line 142
    const-string v0, "itemStatus"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWp:I

    .line 143
    const-string v0, "sourceType"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWq:I

    .line 144
    const-string v0, "sourceCreateTime"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWr:I

    .line 145
    const-string v0, "updateTime"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bTh:I

    .line 146
    const-string v0, "fromUser"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWs:I

    .line 147
    const-string v0, "toUser"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWt:I

    .line 148
    const-string v0, "realChatName"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWu:I

    .line 149
    const-string v0, "favProto"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWv:I

    .line 150
    const-string v0, "xml"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bSV:I

    .line 151
    const-string v0, "ext"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWw:I

    .line 152
    const-string v0, "edittime"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bWx:I

    .line 153
    const-string v0, "rowid"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/tencent/mm/c/b/q;->bSe:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tencent/mm/sdk/e/ad;-><init>()V

    return-void
.end method

.method public static ob()Lcom/tencent/mm/sdk/e/ae;
    .locals 6

    .prologue
    const/16 v5, 0x12

    .line 54
    new-instance v0, Lcom/tencent/mm/sdk/e/ae;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/e/ae;-><init>()V

    .line 55
    new-array v1, v5, [Ljava/lang/reflect/Field;

    iput-object v1, v0, Lcom/tencent/mm/sdk/e/ae;->cAj:[Ljava/lang/reflect/Field;

    .line 56
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "localId"

    aput-object v4, v2, v3

    .line 59
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "localId"

    const-string v4, "LONG"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v2, " localId LONG PRIMARY KEY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, "localId"

    iput-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfz:Ljava/lang/String;

    .line 63
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "id"

    aput-object v4, v2, v3

    .line 64
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "id"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v2, " id INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    .line 68
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "type"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, " type INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "localSeq"

    aput-object v4, v2, v3

    .line 72
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "localSeq"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, " localSeq INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "updateSeq"

    aput-object v4, v2, v3

    .line 76
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "updateSeq"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, " updateSeq INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x5

    const-string v4, "flag"

    aput-object v4, v2, v3

    .line 80
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "flag"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, " flag INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "sourceId"

    aput-object v4, v2, v3

    .line 84
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "sourceId"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, " sourceId TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "itemStatus"

    aput-object v4, v2, v3

    .line 88
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "itemStatus"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, " itemStatus INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x8

    const-string v4, "sourceType"

    aput-object v4, v2, v3

    .line 92
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "sourceType"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v2, " sourceType INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x9

    const-string v4, "sourceCreateTime"

    aput-object v4, v2, v3

    .line 96
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "sourceCreateTime"

    const-string v4, "LONG"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v2, " sourceCreateTime LONG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xa

    const-string v4, "updateTime"

    aput-object v4, v2, v3

    .line 100
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "updateTime"

    const-string v4, "LONG"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v2, " updateTime LONG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xb

    const-string v4, "fromUser"

    aput-object v4, v2, v3

    .line 104
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "fromUser"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v2, " fromUser TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xc

    const-string v4, "toUser"

    aput-object v4, v2, v3

    .line 108
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "toUser"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, " toUser TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xd

    const-string v4, "realChatName"

    aput-object v4, v2, v3

    .line 112
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "realChatName"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, " realChatName TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xe

    const-string v4, "favProto"

    aput-object v4, v2, v3

    .line 116
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "favProto"

    const-string v4, "BLOB"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, " favProto BLOB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xf

    const-string v4, "xml"

    aput-object v4, v2, v3

    .line 120
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "xml"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, " xml TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x10

    const-string v4, "ext"

    aput-object v4, v2, v3

    .line 124
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "ext"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, " ext TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x11

    const-string v4, "edittime"

    aput-object v4, v2, v3

    .line 128
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "edittime"

    const-string v4, "LONG"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, " edittime LONG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const-string v3, "rowid"

    aput-object v3, v2, v5

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/e/ae;->cjp:Ljava/lang/String;

    .line 133
    return-object v0
.end method


# virtual methods
.method public convertFrom(Landroid/database/Cursor;)V
    .locals 6
    .parameter

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 157
    if-nez v2, :cond_1

    .line 222
    :cond_0
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 159
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 160
    sget v4, Lcom/tencent/mm/c/b/q;->bWk:I

    if-ne v4, v0, :cond_3

    .line 161
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/mm/c/b/q;->field_localId:J

    .line 158
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_3
    sget v4, Lcom/tencent/mm/c/b/q;->bWl:I

    if-ne v4, v0, :cond_4

    .line 164
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/c/b/q;->field_id:I

    goto :goto_1

    .line 166
    :cond_4
    sget v4, Lcom/tencent/mm/c/b/q;->bRT:I

    if-ne v4, v0, :cond_5

    .line 167
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/c/b/q;->field_type:I

    goto :goto_1

    .line 169
    :cond_5
    sget v4, Lcom/tencent/mm/c/b/q;->bWm:I

    if-ne v4, v0, :cond_6

    .line 170
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/c/b/q;->field_localSeq:I

    goto :goto_1

    .line 172
    :cond_6
    sget v4, Lcom/tencent/mm/c/b/q;->bWn:I

    if-ne v4, v0, :cond_7

    .line 173
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/c/b/q;->field_updateSeq:I

    goto :goto_1

    .line 175
    :cond_7
    sget v4, Lcom/tencent/mm/c/b/q;->bUx:I

    if-ne v4, v0, :cond_8

    .line 176
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/c/b/q;->field_flag:I

    goto :goto_1

    .line 178
    :cond_8
    sget v4, Lcom/tencent/mm/c/b/q;->bWo:I

    if-ne v4, v0, :cond_9

    .line 179
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/q;->field_sourceId:Ljava/lang/String;

    goto :goto_1

    .line 181
    :cond_9
    sget v4, Lcom/tencent/mm/c/b/q;->bWp:I

    if-ne v4, v0, :cond_a

    .line 182
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/c/b/q;->field_itemStatus:I

    goto :goto_1

    .line 184
    :cond_a
    sget v4, Lcom/tencent/mm/c/b/q;->bWq:I

    if-ne v4, v0, :cond_b

    .line 185
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/c/b/q;->field_sourceType:I

    goto :goto_1

    .line 187
    :cond_b
    sget v4, Lcom/tencent/mm/c/b/q;->bWr:I

    if-ne v4, v0, :cond_c

    .line 188
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/mm/c/b/q;->field_sourceCreateTime:J

    goto :goto_1

    .line 190
    :cond_c
    sget v4, Lcom/tencent/mm/c/b/q;->bTh:I

    if-ne v4, v0, :cond_d

    .line 191
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/mm/c/b/q;->field_updateTime:J

    goto :goto_1

    .line 193
    :cond_d
    sget v4, Lcom/tencent/mm/c/b/q;->bWs:I

    if-ne v4, v0, :cond_e

    .line 194
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/q;->field_fromUser:Ljava/lang/String;

    goto :goto_1

    .line 196
    :cond_e
    sget v4, Lcom/tencent/mm/c/b/q;->bWt:I

    if-ne v4, v0, :cond_f

    .line 197
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/q;->field_toUser:Ljava/lang/String;

    goto/16 :goto_1

    .line 199
    :cond_f
    sget v4, Lcom/tencent/mm/c/b/q;->bWu:I

    if-ne v4, v0, :cond_10

    .line 200
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/q;->field_realChatName:Ljava/lang/String;

    goto/16 :goto_1

    .line 202
    :cond_10
    sget v4, Lcom/tencent/mm/c/b/q;->bWv:I

    if-ne v4, v0, :cond_11

    .line 204
    :try_start_0
    new-instance v0, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/a/fx;->aT([B)Lcom/tencent/mm/protocal/a/fx;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/q;->field_favProto:Lcom/tencent/mm/protocal/a/fx;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v4, "MicroMsg.SDK.BaseFavItemInfo"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :cond_11
    sget v4, Lcom/tencent/mm/c/b/q;->bSV:I

    if-ne v4, v0, :cond_12

    .line 210
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/q;->field_xml:Ljava/lang/String;

    goto/16 :goto_1

    .line 212
    :cond_12
    sget v4, Lcom/tencent/mm/c/b/q;->bWw:I

    if-ne v4, v0, :cond_13

    .line 213
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/c/b/q;->field_ext:Ljava/lang/String;

    goto/16 :goto_1

    .line 215
    :cond_13
    sget v4, Lcom/tencent/mm/c/b/q;->bWx:I

    if-ne v4, v0, :cond_14

    .line 216
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/mm/c/b/q;->field_edittime:J

    goto/16 :goto_1

    .line 218
    :cond_14
    sget v4, Lcom/tencent/mm/c/b/q;->bSe:I

    if-ne v4, v0, :cond_2

    .line 219
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/mm/c/b/q;->gfy:J

    goto/16 :goto_1
.end method

.method public final oa()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 225
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 227
    const-string v0, "localId"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/q;->field_localId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    const-string v0, "id"

    iget v2, p0, Lcom/tencent/mm/c/b/q;->field_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v0, "type"

    iget v2, p0, Lcom/tencent/mm/c/b/q;->field_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v0, "localSeq"

    iget v2, p0, Lcom/tencent/mm/c/b/q;->field_localSeq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v0, "updateSeq"

    iget v2, p0, Lcom/tencent/mm/c/b/q;->field_updateSeq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v0, "flag"

    iget v2, p0, Lcom/tencent/mm/c/b/q;->field_flag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v0, "sourceId"

    iget-object v2, p0, Lcom/tencent/mm/c/b/q;->field_sourceId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "itemStatus"

    iget v2, p0, Lcom/tencent/mm/c/b/q;->field_itemStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v0, "sourceType"

    iget v2, p0, Lcom/tencent/mm/c/b/q;->field_sourceType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v0, "sourceCreateTime"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/q;->field_sourceCreateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    const-string v0, "updateTime"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/q;->field_updateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 238
    const-string v0, "fromUser"

    iget-object v2, p0, Lcom/tencent/mm/c/b/q;->field_fromUser:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "toUser"

    iget-object v2, p0, Lcom/tencent/mm/c/b/q;->field_toUser:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "realChatName"

    iget-object v2, p0, Lcom/tencent/mm/c/b/q;->field_realChatName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :try_start_0
    const-string v0, "favProto"

    iget-object v2, p0, Lcom/tencent/mm/c/b/q;->field_favProto:Lcom/tencent/mm/protocal/a/fx;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/fx;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    const-string v0, "xml"

    iget-object v2, p0, Lcom/tencent/mm/c/b/q;->field_xml:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "ext"

    iget-object v2, p0, Lcom/tencent/mm/c/b/q;->field_ext:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "edittime"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/q;->field_edittime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    iget-wide v2, p0, Lcom/tencent/mm/c/b/q;->gfy:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 250
    const-string v0, "rowid"

    iget-wide v2, p0, Lcom/tencent/mm/c/b/q;->gfy:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    :cond_0
    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v2, "MicroMsg.SDK.BaseFavItemInfo"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
