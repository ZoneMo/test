.class final Lcom/tencent/mm/model/dk;
.super Lcom/tencent/mm/model/dq;
.source "SourceFile"


# instance fields
.field final synthetic cjV:Lcom/tencent/mm/model/ct;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/ct;)V
    .locals 1
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/tencent/mm/model/dk;->cjV:Lcom/tencent/mm/model/ct;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/model/dq;-><init>(Lcom/tencent/mm/model/ct;B)V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/tencent/mm/model/cr;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/model/cr;->cjM:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public final a(Lcom/tencent/mm/model/cr;)Z
    .locals 4
    .parameter

    .prologue
    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/tencent/mm/model/cr;->cjN:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/tencent/mm/model/cr;->cjM:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    iget v0, p1, Lcom/tencent/mm/model/cr;->key:I

    iget-object v1, p1, Lcom/tencent/mm/model/cr;->cjM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/model/ct;->e(ILjava/lang/String;)V

    .line 299
    const-string v0, ""

    iput-object v0, p1, Lcom/tencent/mm/model/cr;->cjM:Ljava/lang/String;

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/tencent/mm/model/cr;->cjN:J

    .line 301
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs b(I[Ljava/lang/Object;)Lcom/tencent/mm/model/cr;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Lcom/tencent/mm/model/cr;

    invoke-direct {v0}, Lcom/tencent/mm/model/cr;-><init>()V

    .line 284
    iput p1, v0, Lcom/tencent/mm/model/cr;->key:I

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/model/cr;->cjM:Ljava/lang/String;

    .line 286
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/mm/model/cr;->cjN:J

    .line 287
    return-object v0
.end method
