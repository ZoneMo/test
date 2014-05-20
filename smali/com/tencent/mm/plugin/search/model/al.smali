.class final Lcom/tencent/mm/plugin/search/model/al;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic ehV:Lcom/tencent/mm/plugin/search/model/ag;

.field private ehY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/ag;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/al;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/al;->ehY:Ljava/lang/String;

    .line 277
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/al;->ehV:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/ag;->a(Lcom/tencent/mm/plugin/search/model/ag;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egw:[I

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/al;->ehY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/ap;->b([ILjava/lang/String;)V

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteMessageByTalker(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/al;->ehY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
