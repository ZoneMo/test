.class final Lcom/tencent/mm/ui/account/mobile/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic gwJ:Lcom/tencent/mm/ui/account/mobile/cn;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/mobile/cn;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/cy;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/tencent/mm/ui/account/mobile/cy;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/mobile/cn;->a(Lcom/tencent/mm/ui/account/mobile/cn;)Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    .line 481
    return-void
.end method
