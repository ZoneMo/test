.class final Lcom/tencent/mm/plugin/search/model/q;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private ehh:Ljava/lang/String;

.field private ehi:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/q;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/q;->ehi:Z

    .line 716
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/q;->ehh:Ljava/lang/String;

    .line 717
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 721
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/q;->ehh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/i;->fs(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/h;

    move-result-object v0

    .line 722
    if-nez v0, :cond_0

    .line 723
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/search/model/q;->ehi:Z

    .line 733
    :goto_0
    return v2

    .line 727
    :cond_0
    new-instance v1, Lcom/tencent/mm/plugin/search/model/i;

    invoke-direct {v1, v0}, Lcom/tencent/mm/plugin/search/model/i;-><init>(Lcom/tencent/mm/modelfriend/h;)V

    .line 728
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/q;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/q;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;Lcom/tencent/mm/plugin/search/model/i;)I

    goto :goto_0

    .line 731
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/search/model/q;->ehi:Z

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InsertFriend(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/q;->ehh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/q;->ehi:Z

    if-eqz v0, :cond_0

    const-string v0, " [skipped]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
