.class final Lcom/tencent/mm/ui/account/ff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic gsg:Lcom/tencent/mm/ui/account/fd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/fd;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ff;->gsg:Lcom/tencent/mm/ui/account/fd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 1
    .parameter

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ff;->gsg:Lcom/tencent/mm/ui/account/fd;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/fd;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->k(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    .line 564
    :cond_0
    return-void
.end method
