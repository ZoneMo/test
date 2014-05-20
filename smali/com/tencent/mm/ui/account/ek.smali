.class final Lcom/tencent/mm/ui/account/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic cmw:Lcom/tencent/mm/n/x;

.field final synthetic gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/n/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ek;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/ek;->cmw:Lcom/tencent/mm/n/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 844
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ek;->cmw:Lcom/tencent/mm/n/x;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 845
    return-void
.end method
