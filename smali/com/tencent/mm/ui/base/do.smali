.class final Lcom/tencent/mm/ui/base/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic gCK:Lcom/tencent/mm/ui/base/dn;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/dn;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/mm/ui/base/do;->gCK:Lcom/tencent/mm/ui/base/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 47
    iget-object v1, p0, Lcom/tencent/mm/ui/base/do;->gCK:Lcom/tencent/mm/ui/base/dn;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/dn;->a(Lcom/tencent/mm/ui/base/dn;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/tencent/mm/ui/base/do;->gCK:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/dn;->show()V

    .line 57
    :goto_0
    return v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/base/do;->gCK:Lcom/tencent/mm/ui/base/dn;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/dn;->b(Lcom/tencent/mm/ui/base/dn;)I

    .line 52
    iget-object v1, p0, Lcom/tencent/mm/ui/base/do;->gCK:Lcom/tencent/mm/ui/base/dn;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/dn;->c(Lcom/tencent/mm/ui/base/dn;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/tencent/mm/ui/base/do;->gCK:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/dn;->show()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/do;->gCK:Lcom/tencent/mm/ui/base/dn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/dn;->cancel()V

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method
