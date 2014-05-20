.class final Lcom/tencent/mm/ui/account/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic grm:Lcom/tencent/mm/modelfriend/ag;

.field final synthetic gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/modelfriend/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ed;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/ed;->grm:Lcom/tencent/mm/modelfriend/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 652
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ed;->grm:Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 653
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x91

    iget-object v2, p0, Lcom/tencent/mm/ui/account/ed;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 654
    return-void
.end method
