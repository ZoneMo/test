.class final Lcom/tencent/mm/plugin/search/model/o;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;

.field private ehh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/o;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    .line 747
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/model/o;->ehh:Ljava/lang/String;

    .line 748
    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 4

    .prologue
    .line 752
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/o;->ehh:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/h;->eW(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 753
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/o;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/plugin/search/model/a;->egz:[I

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/mm/plugin/search/model/ap;->a([IJ)V

    .line 754
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteFriend(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/o;->ehh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
