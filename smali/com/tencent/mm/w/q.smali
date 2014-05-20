.class final Lcom/tencent/mm/w/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cmw:Lcom/tencent/mm/n/x;

.field final synthetic ctK:Lcom/tencent/mm/w/o;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/o;Lcom/tencent/mm/n/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/tencent/mm/w/q;->ctK:Lcom/tencent/mm/w/o;

    iput-object p2, p0, Lcom/tencent/mm/w/q;->cmw:Lcom/tencent/mm/n/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tencent/mm/w/q;->cmw:Lcom/tencent/mm/n/x;

    invoke-virtual {v0}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/w/q;->cmw:Lcom/tencent/mm/n/x;

    instance-of v0, v0, Lcom/tencent/mm/w/y;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/tencent/mm/w/q;->ctK:Lcom/tencent/mm/w/o;

    invoke-static {v0}, Lcom/tencent/mm/w/o;->b(Lcom/tencent/mm/w/o;)Z

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/w/q;->cmw:Lcom/tencent/mm/n/x;

    check-cast v0, Lcom/tencent/mm/w/y;

    invoke-virtual {v0}, Lcom/tencent/mm/w/y;->AV()I

    move-result v0

    .line 252
    invoke-static {}, Lcom/tencent/mm/w/o;->AR()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/tencent/mm/w/q;->ctK:Lcom/tencent/mm/w/o;

    invoke-static {v0}, Lcom/tencent/mm/w/o;->c(Lcom/tencent/mm/w/o;)I

    move-result v0

    if-lez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/tencent/mm/w/q;->ctK:Lcom/tencent/mm/w/o;

    invoke-static {v0}, Lcom/tencent/mm/w/o;->d(Lcom/tencent/mm/w/o;)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/w/q;->ctK:Lcom/tencent/mm/w/o;

    invoke-static {v0}, Lcom/tencent/mm/w/o;->e(Lcom/tencent/mm/w/o;)V

    goto :goto_0
.end method
