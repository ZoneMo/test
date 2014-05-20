.class abstract Lcom/tencent/mm/model/dq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic cjV:Lcom/tencent/mm/model/ct;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/model/ct;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/tencent/mm/model/dq;->cjV:Lcom/tencent/mm/model/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/model/ct;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/tencent/mm/model/dq;-><init>(Lcom/tencent/mm/model/ct;)V

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/tencent/mm/model/cr;[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 217
    .line 218
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 219
    aget-object v1, p2, v3

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/cj;->h(Ljava/lang/Object;I)I

    move-result v0

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/mm/model/cr;->cjM:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/model/cr;->cjM:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public abstract a(Lcom/tencent/mm/model/cr;)Z
.end method

.method public varargs b(I[Ljava/lang/Object;)Lcom/tencent/mm/model/cr;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 204
    .line 205
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 206
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/cj;->h(Ljava/lang/Object;I)I

    move-result v0

    .line 208
    :cond_0
    new-instance v1, Lcom/tencent/mm/model/cr;

    invoke-direct {v1}, Lcom/tencent/mm/model/cr;-><init>()V

    .line 209
    iput p1, v1, Lcom/tencent/mm/model/cr;->key:I

    .line 210
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/model/cr;->cjM:Ljava/lang/String;

    .line 211
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/tencent/mm/model/cr;->cjN:J

    .line 212
    return-object v1
.end method
