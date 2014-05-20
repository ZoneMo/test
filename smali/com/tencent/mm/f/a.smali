.class public Lcom/tencent/mm/f/a;
.super Lcom/tencent/mm/c/b/f;
.source "SourceFile"


# static fields
.field public static cfX:Lcom/tencent/mm/sdk/e/ae;

.field private static cfZ:Ljava/util/Map;

.field private static cga:Ljava/util/Map;


# instance fields
.field public cfY:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x12

    .line 13
    new-instance v0, Lcom/tencent/mm/sdk/e/ae;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/e/ae;-><init>()V

    new-array v1, v5, [Ljava/lang/reflect/Field;

    iput-object v1, v0, Lcom/tencent/mm/sdk/e/ae;->cAj:[Ljava/lang/reflect/Field;

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "username"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "username"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " username TEXT default \'\'  PRIMARY KEY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "username"

    iput-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfz:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "alias"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "alias"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " alias TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "conRemark"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "conRemark"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " conRemark TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "domainList"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "domainList"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " domainList TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "nickname"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "nickname"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " nickname TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x5

    const-string v4, "pyInitial"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "pyInitial"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " pyInitial TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "quanPin"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "quanPin"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " quanPin TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "showHead"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "showHead"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " showHead INTEGER default \'0\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x8

    const-string v4, "type"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "type"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " type INTEGER default \'0\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x9

    const-string v4, "weiboFlag"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "weiboFlag"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " weiboFlag INTEGER default \'0\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xa

    const-string v4, "weiboNickname"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "weiboNickname"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " weiboNickname TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xb

    const-string v4, "conRemarkPYFull"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "conRemarkPYFull"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " conRemarkPYFull TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xc

    const-string v4, "conRemarkPYShort"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "conRemarkPYShort"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " conRemarkPYShort TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xd

    const-string v4, "lvbuff"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "lvbuff"

    const-string v4, "BLOB"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " lvbuff BLOB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xe

    const-string v4, "verifyFlag"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "verifyFlag"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " verifyFlag INTEGER default \'0\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0xf

    const-string v4, "encryptUsername"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "encryptUsername"

    const-string v4, "TEXT"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " encryptUsername TEXT default \'\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x10

    const-string v4, "chatroomFlag"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "chatroomFlag"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " chatroomFlag INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const/16 v3, 0x11

    const-string v4, "deleteFlag"

    aput-object v4, v2, v3

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->gfA:Ljava/util/Map;

    const-string v3, "deleteFlag"

    const-string v4, "INTEGER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, " deleteFlag INTEGER default \'0\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/mm/sdk/e/ae;->bZx:[Ljava/lang/String;

    const-string v3, "rowid"

    aput-object v3, v2, v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/e/ae;->cjp:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mm/f/a;->cfX:Lcom/tencent/mm/sdk/e/ae;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/f/a;->cfZ:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/f/a;->cga:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/tencent/mm/c/b/f;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_alias:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemark:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYShort:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYFull:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_domainList:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/f/a;->field_weiboFlag:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_weiboNickname:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/f/a;->field_showHead:I

    iput v2, p0, Lcom/tencent/mm/f/a;->field_type:I

    iput v2, p0, Lcom/tencent/mm/f/a;->field_verifyFlag:I

    iput v2, p0, Lcom/tencent/mm/f/a;->field_chatroomFlag:I

    iput v2, p0, Lcom/tencent/mm/f/a;->bTN:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bUb:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/f/a;->bUc:I

    iput v2, p0, Lcom/tencent/mm/f/a;->uin:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bTQ:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bTR:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/f/a;->bTS:I

    iput v2, p0, Lcom/tencent/mm/f/a;->bTT:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bTU:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bTV:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/f/a;->bTW:I

    iput v2, p0, Lcom/tencent/mm/f/a;->bTM:I

    iput v2, p0, Lcom/tencent/mm/f/a;->bTX:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bTY:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bTZ:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bUa:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/f/a;->bUd:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bUf:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bUe:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/f/a;->bTP:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bTO:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bUg:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/f/a;->bUh:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bUl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bUm:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/f/a;->bUn:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tencent/mm/f/a;-><init>()V

    .line 31
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static b(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    sput-object p0, Lcom/tencent/mm/f/a;->cfZ:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public static bK(I)Z
    .locals 1
    .parameter

    .prologue
    .line 224
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/tencent/mm/f/a;->cfZ:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/f/a;->cfZ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static by(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 413
    if-nez p0, :cond_1

    .line 414
    const/4 p0, 0x0

    .line 434
    :cond_0
    :goto_0
    return-object p0

    .line 418
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@t.qq.com"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@qqim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "@qqim"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 425
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 427
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 428
    new-instance v2, Lcom/tencent/mm/a/j;

    invoke-direct {v2, v0, v1}, Lcom/tencent/mm/a/j;-><init>(J)V

    invoke-virtual {v2}, Lcom/tencent/mm/a/j;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static c(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    sput-object p0, Lcom/tencent/mm/f/a;->cga:Ljava/util/Map;

    .line 98
    return-void
.end method

.method private static isLetter(C)Z
    .locals 1
    .parameter

    .prologue
    .line 285
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static qX()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public static qY()I
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x8

    return v0
.end method

.method public static qZ()I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x10

    return v0
.end method

.method public static ra()I
    .locals 1

    .prologue
    .line 216
    const/16 v0, 0x20

    return v0
.end method


# virtual methods
.method public bA(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bTZ:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public bB(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bUa:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public final bC(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bUb:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public final bD(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bUe:Ljava/lang/String;

    .line 547
    return-void
.end method

.method public final bE(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_weiboNickname:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public final bF(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bTQ:Ljava/lang/String;

    .line 575
    return-void
.end method

.method public final bG(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bTR:Ljava/lang/String;

    .line 579
    return-void
.end method

.method public final bH(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_conRemark:Ljava/lang/String;

    .line 591
    return-void
.end method

.method public final bI(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYShort:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public final bJ(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYFull:Ljava/lang/String;

    .line 599
    return-void
.end method

.method public final bK(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bTU:Ljava/lang/String;

    .line 603
    return-void
.end method

.method public final bL(I)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput p1, p0, Lcom/tencent/mm/f/a;->bTN:I

    .line 298
    return-void
.end method

.method public final bL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bTV:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public final bM(I)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput p1, p0, Lcom/tencent/mm/f/a;->field_showHead:I

    .line 318
    return-void
.end method

.method public final bM(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_domainList:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public final bN(I)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput p1, p0, Lcom/tencent/mm/f/a;->bTX:I

    .line 495
    return-void
.end method

.method public final bN(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bUf:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public final bO(I)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput p1, p0, Lcom/tencent/mm/f/a;->bUc:I

    .line 531
    return-void
.end method

.method public bO(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bUg:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public final bP(I)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput p1, p0, Lcom/tencent/mm/f/a;->field_weiboFlag:I

    .line 559
    return-void
.end method

.method public final bQ(I)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput p1, p0, Lcom/tencent/mm/f/a;->uin:I

    .line 571
    return-void
.end method

.method public final bR(I)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput p1, p0, Lcom/tencent/mm/f/a;->bTS:I

    .line 583
    return-void
.end method

.method public final bS(I)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput p1, p0, Lcom/tencent/mm/f/a;->bTT:I

    .line 587
    return-void
.end method

.method public final bT(I)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput p1, p0, Lcom/tencent/mm/f/a;->bTW:I

    .line 615
    return-void
.end method

.method public final bU(I)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput p1, p0, Lcom/tencent/mm/f/a;->bTM:I

    .line 619
    return-void
.end method

.method public final bV(I)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput p1, p0, Lcom/tencent/mm/f/a;->field_verifyFlag:I

    .line 629
    return-void
.end method

.method public final bW(I)V
    .locals 2
    .parameter

    .prologue
    .line 636
    iget v0, p0, Lcom/tencent/mm/f/a;->field_chatroomFlag:I

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/f/a;->field_chatroomFlag:I

    .line 637
    return-void
.end method

.method public final bX(I)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput p1, p0, Lcom/tencent/mm/f/a;->bUh:I

    .line 662
    return-void
.end method

.method public final bt(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public final bu(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bTO:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public final bv(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public final bw(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public final bx(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_alias:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public final bz(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/tencent/mm/f/a;->bTY:Ljava/lang/String;

    .line 503
    return-void
.end method

.method public convertFrom(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 717
    invoke-super {p0, p1}, Lcom/tencent/mm/c/b/f;->convertFrom(Landroid/database/Cursor;)V

    .line 718
    iget-wide v0, p0, Lcom/tencent/mm/f/a;->gfy:J

    iput-wide v0, p0, Lcom/tencent/mm/f/a;->cfY:J

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/f/a;->field_lvbuff:[B

    .line 720
    return-void
.end method

.method public final getSource()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/tencent/mm/f/a;->bUd:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    return v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    return-object v0
.end method

.method public final isHidden()Z
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final kn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final n(J)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-wide p1, p0, Lcom/tencent/mm/f/a;->bTP:J

    .line 350
    return-void
.end method

.method public final qE()Lcom/tencent/mm/sdk/e/ae;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/tencent/mm/f/a;->cfX:Lcom/tencent/mm/sdk/e/ae;

    return-object v0
.end method

.method public final qF()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    const/16 v0, 0x20

    .line 105
    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYShort:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYShort:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYShort:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 119
    :cond_0
    :goto_0
    const/16 v1, 0x61

    if-lt v0, v1, :cond_7

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_7

    .line 120
    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    .line 124
    :cond_1
    :goto_1
    return v0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYFull:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYFull:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYFull:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 110
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 113
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/f/a;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 115
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/f/a;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_0

    .line 121
    :cond_7
    const/16 v1, 0x41

    if-lt v0, v1, :cond_8

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 122
    :cond_8
    const/16 v0, 0x7b

    goto/16 :goto_1
.end method

.method public final qG()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 129
    return-void
.end method

.method public final qH()V
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 133
    return-void
.end method

.method public final qI()V
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 137
    return-void
.end method

.method public final qJ()V
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 141
    return-void
.end method

.method public final qK()V
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 145
    return-void
.end method

.method public final qL()V
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 149
    return-void
.end method

.method public final qM()V
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 153
    return-void
.end method

.method public final qN()V
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 157
    return-void
.end method

.method public final qO()V
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 161
    return-void
.end method

.method public final qP()V
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 165
    return-void
.end method

.method public final qQ()V
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 169
    return-void
.end method

.method public final qR()V
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 173
    return-void
.end method

.method public final qS()V
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 177
    return-void
.end method

.method public final qT()V
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 181
    return-void
.end method

.method public final qU()V
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 185
    return-void
.end method

.method public final qV()V
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 197
    return-void
.end method

.method public final qW()V
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 201
    return-void
.end method

.method public final rA()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/tencent/mm/f/a;->bTX:I

    return v0
.end method

.method public final rB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bTY:Ljava/lang/String;

    return-object v0
.end method

.method public rC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bTZ:Ljava/lang/String;

    return-object v0
.end method

.method public rD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bUa:Ljava/lang/String;

    return-object v0
.end method

.method public final rE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bUb:Ljava/lang/String;

    return-object v0
.end method

.method public final rF()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/tencent/mm/f/a;->bUc:I

    return v0
.end method

.method public final rG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bUe:Ljava/lang/String;

    return-object v0
.end method

.method public final rH()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/tencent/mm/f/a;->field_weiboFlag:I

    return v0
.end method

.method public final rI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_weiboNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final rJ()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/tencent/mm/f/a;->field_verifyFlag:I

    return v0
.end method

.method public final rK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bUf:Ljava/lang/String;

    return-object v0
.end method

.method public final rL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bUg:Ljava/lang/String;

    return-object v0
.end method

.method public final rM()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/tencent/mm/f/a;->bUh:I

    return v0
.end method

.method public final rb()Z
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    invoke-static {v0}, Lcom/tencent/mm/f/a;->bK(I)Z

    move-result v0

    return v0
.end method

.method public final rc()Z
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final rd()Z
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final re()Z
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final rf()Z
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final rg()Z
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final rh()Z
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ri()Z
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/tencent/mm/f/a;->field_type:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final rj()I
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/tencent/mm/f/a;->cfY:J

    long-to-int v0, v0

    return v0
.end method

.method public final rk()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/tencent/mm/f/a;->bTN:I

    return v0
.end method

.method public final rl()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/tencent/mm/f/a;->field_showHead:I

    return v0
.end method

.method public final rm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/tencent/mm/f/a;->bTO:Ljava/lang/String;

    return-object v0
.end method

.method public final rn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/f/a;->ro()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_pyInitial:Ljava/lang/String;

    goto :goto_0
.end method

.method public final ro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_quanPin:Ljava/lang/String;

    goto :goto_0
.end method

.method public final rp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    sget-object v0, Lcom/tencent/mm/f/a;->cga:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 374
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_alias:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final rq()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    sget-object v0, Lcom/tencent/mm/f/a;->cfZ:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    if-eqz v0, :cond_0

    .line 387
    :goto_0
    return-object v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/f/a;->rs()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_nickname:Ljava/lang/String;

    goto :goto_0
.end method

.method public final rr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemark:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemark:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemark:Ljava/lang/String;

    .line 394
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/f/a;->rq()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final rs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/tencent/mm/f/a;->rp()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/f/a;->by(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    goto :goto_0
.end method

.method public final rt()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/tencent/mm/f/a;->bTT:I

    return v0
.end method

.method public final ru()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemark:Ljava/lang/String;

    return-object v0
.end method

.method public final rv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYShort:Ljava/lang/String;

    return-object v0
.end method

.method public final rw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_conRemarkPYFull:Ljava/lang/String;

    return-object v0
.end method

.method public final rx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/tencent/mm/f/a;->field_domainList:Ljava/lang/String;

    return-object v0
.end method

.method public final ry()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/tencent/mm/f/a;->bTW:I

    return v0
.end method

.method public final rz()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/tencent/mm/f/a;->bTM:I

    return v0
.end method

.method public final setSource(I)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput p1, p0, Lcom/tencent/mm/f/a;->bUd:I

    .line 539
    return-void
.end method

.method public final setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput p1, p0, Lcom/tencent/mm/f/a;->field_type:I

    .line 306
    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/tencent/mm/f/a;->field_username:Ljava/lang/String;

    .line 326
    return-void
.end method
