.class public final Lcom/tencent/mm/storage/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private cxp:Ljava/lang/String;

.field private dNO:Ljava/lang/String;

.field private ghX:Ljava/lang/String;

.field private ghY:Z

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/an;->title:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/an;->content:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/an;->cxp:Ljava/lang/String;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/an;->ghX:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/storage/an;->ghY:Z

    .line 177
    return-void
.end method

.method public static uT(Ljava/lang/String;)Lcom/tencent/mm/storage/an;
    .locals 4
    .parameter

    .prologue
    .line 180
    new-instance v1, Lcom/tencent/mm/storage/an;

    invoke-direct {v1}, Lcom/tencent/mm/storage/an;-><init>()V

    .line 181
    const-string v0, "msg"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_0

    .line 184
    :try_start_0
    const-string v0, ".msg.pushmail.content.subject"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/an;->title:Ljava/lang/String;

    .line 185
    const-string v0, ".msg.pushmail.content.digest"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/an;->content:Ljava/lang/String;

    .line 186
    const-string v0, ".msg.pushmail.content.sender"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/an;->cxp:Ljava/lang/String;

    .line 187
    const-string v0, ".msg.pushmail.waplink"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/an;->ghX:Ljava/lang/String;

    .line 188
    const-string v0, ".msg.pushmail.content.attach"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/mm/storage/an;->ghY:Z

    .line 189
    const-string v0, ".msg.pushmail.mailid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/an;->dNO:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final Ch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/tencent/mm/storage/an;->cxp:Ljava/lang/String;

    return-object v0
.end method

.method public final aCH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tencent/mm/storage/an;->ghX:Ljava/lang/String;

    return-object v0
.end method

.method public final aCI()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/tencent/mm/storage/an;->ghY:Z

    return v0
.end method

.method public final aCJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/tencent/mm/storage/an;->dNO:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tencent/mm/storage/an;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/mm/storage/an;->title:Ljava/lang/String;

    return-object v0
.end method
