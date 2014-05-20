.class public final Lcom/tencent/mm/storage/ad;
.super Lcom/tencent/mm/c/b/l;
.source "SourceFile"


# static fields
.field protected static cfX:Lcom/tencent/mm/sdk/e/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x18

    .line 92
    new-instance v0, Lcom/tencent/mm/sdk/e/ae;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/e/ae;-><init>()V

    new-array v1, v5, [Ljava/lang/reflect/Field;

    iput-object v1, v0, Lcom/tencent/mm/sdk/e/ae;->cAj:[Ljava/lang/reflect/Field;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "productId_type"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "productId_type"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " productId_type TEXT PRIMARY KEY  COLLATE NOCASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "productId_type"

    iput-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfz:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "productId"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "productId"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " productId TEXT COLLATE NOCASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "type"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " type INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "iconUrl"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "iconUrl"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " iconUrl TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "packName"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "packName"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " packName TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x5

    const-string v4, "packDesc"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "packDesc"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " packDesc TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "packAuthInfo"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "packAuthInfo"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " packAuthInfo TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "packPrice"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "packPrice"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " packPrice TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x8

    const-string v4, "packType"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "packType"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " packType INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x9

    const-string v4, "packFlag"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "packFlag"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " packFlag INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xa

    const-string v4, "coverUrl"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "coverUrl"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " coverUrl TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xb

    const-string v4, "packExpire"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "packExpire"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " packExpire INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xc

    const-string v4, "packCopyright"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "packCopyright"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " packCopyright TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xd

    const-string v4, "timeStamp"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "timeStamp"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " timeStamp INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xe

    const-string v4, "panelUrl"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "panelUrl"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " panelUrl TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xf

    const-string v4, "priceType"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "priceType"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " priceType TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x10

    const-string v4, "sendInfo"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "sendInfo"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " sendInfo TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x11

    const-string v4, "timeLimitStr"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "timeLimitStr"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " timeLimitStr TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x12

    const-string v4, "bannerImgUrl"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "bannerImgUrl"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " bannerImgUrl TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x13

    const-string v4, "bannerWidth"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "bannerWidth"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " bannerWidth INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x14

    const-string v4, "bannerHeight"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "bannerHeight"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " bannerHeight INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x15

    const-string v4, "stripUrl"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "stripUrl"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " stripUrl TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x16

    const-string v4, "introduce"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "introduce"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " introduce TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x17

    const-string v4, "tagUri"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "tagUri"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " tagUri TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const-string v3, "rowid"

    aput-object v3, v2, v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/e/ae;->cjp:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mm/storage/ad;->cfX:Lcom/tencent/mm/sdk/e/ae;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/mm/c/b/l;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/protocal/a/ev;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/mm/c/b/l;-><init>()V

    .line 25
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    .line 26
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/storage/ad;->a(Lcom/tencent/mm/protocal/a/fb;I)V

    .line 27
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ew;->fFv:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_bannerImgUrl:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ew;->fFw:I

    iput v0, p0, Lcom/tencent/mm/storage/ad;->field_bannerWidth:I

    .line 29
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    iget v0, v0, Lcom/tencent/mm/protocal/a/ew;->fFx:I

    iput v0, p0, Lcom/tencent/mm/storage/ad;->field_bannerHeight:I

    .line 30
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ew;->fFy:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_stripUrl:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/protocal/a/fb;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/mm/c/b/l;-><init>()V

    .line 21
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/storage/ad;->a(Lcom/tencent/mm/protocal/a/fb;I)V

    .line 22
    return-void
.end method

.method private a(Lcom/tencent/mm/protocal/a/fb;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tencent/mm/protocal/a/fb;->fFB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_productId_type:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFB:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_productId:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/tencent/mm/storage/ad;->field_type:I

    .line 37
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->dGT:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_iconUrl:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFC:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_packName:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_packDesc:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_packAuthInfo:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFF:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_packPrice:Ljava/lang/String;

    .line 42
    iget v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFG:I

    iput v0, p0, Lcom/tencent/mm/storage/ad;->field_packType:I

    .line 43
    iget v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFH:I

    iput v0, p0, Lcom/tencent/mm/storage/ad;->field_packFlag:I

    .line 44
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFK:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_coverUrl:Ljava/lang/String;

    .line 45
    iget v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFL:I

    iput v0, p0, Lcom/tencent/mm/storage/ad;->field_packExpire:I

    .line 46
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFM:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_packCopyright:Ljava/lang/String;

    .line 47
    iget v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFX:I

    iput v0, p0, Lcom/tencent/mm/storage/ad;->field_timeStamp:I

    .line 48
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFP:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_panelUrl:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFO:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_priceType:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFY:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_sendInfo:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFU:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_timeLimitStr:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fFZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_introduce:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/fb;->fGa:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/storage/ad;->field_tagUri:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public final Ld()Lcom/tencent/mm/protocal/a/ev;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/tencent/mm/protocal/a/ev;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/ev;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ad;->aBO()Lcom/tencent/mm/protocal/a/fb;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ev;->fFt:Lcom/tencent/mm/protocal/a/fb;

    .line 84
    new-instance v1, Lcom/tencent/mm/protocal/a/ew;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ew;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    .line 85
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    iget-object v2, p0, Lcom/tencent/mm/storage/ad;->field_bannerImgUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ew;->fFv:Ljava/lang/String;

    .line 86
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    iget v2, p0, Lcom/tencent/mm/storage/ad;->field_bannerWidth:I

    iput v2, v1, Lcom/tencent/mm/protocal/a/ew;->fFw:I

    .line 87
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    iget v2, p0, Lcom/tencent/mm/storage/ad;->field_bannerHeight:I

    iput v2, v1, Lcom/tencent/mm/protocal/a/ew;->fFx:I

    .line 88
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/ev;->fFu:Lcom/tencent/mm/protocal/a/ew;

    iget-object v2, p0, Lcom/tencent/mm/storage/ad;->field_stripUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ew;->fFy:Ljava/lang/String;

    .line 89
    return-object v0
.end method

.method public final aBO()Lcom/tencent/mm/protocal/a/fb;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/tencent/mm/protocal/a/fb;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/fb;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_productId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFB:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_iconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->dGT:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_packName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFC:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_packDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFD:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_packAuthInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFE:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_packPrice:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFF:Ljava/lang/String;

    .line 65
    iget v1, p0, Lcom/tencent/mm/storage/ad;->field_packType:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFG:I

    .line 66
    iget v1, p0, Lcom/tencent/mm/storage/ad;->field_packFlag:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFH:I

    .line 67
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_coverUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFK:Ljava/lang/String;

    .line 68
    iget v1, p0, Lcom/tencent/mm/storage/ad;->field_packExpire:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFL:I

    .line 69
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_packCopyright:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFM:Ljava/lang/String;

    .line 70
    iget v1, p0, Lcom/tencent/mm/storage/ad;->field_timeStamp:I

    iput v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFX:I

    .line 71
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_panelUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFP:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_priceType:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFO:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_sendInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFY:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_timeLimitStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFU:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_introduce:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fFZ:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/tencent/mm/storage/ad;->field_tagUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/fb;->fGa:Ljava/lang/String;

    .line 77
    return-object v0
.end method

.method protected final qE()Lcom/tencent/mm/sdk/e/ae;
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method
