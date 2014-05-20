.class final Lcom/tencent/mm/ui/qrcode/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hdu:Lcom/tencent/mm/ui/qrcode/QRCodeIntroductionWebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/QRCodeIntroductionWebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/e;->hdu:Lcom/tencent/mm/ui/qrcode/QRCodeIntroductionWebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/e;->hdu:Lcom/tencent/mm/ui/qrcode/QRCodeIntroductionWebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/QRCodeIntroductionWebViewUI;->a(Lcom/tencent/mm/ui/qrcode/QRCodeIntroductionWebViewUI;)V

    .line 23
    const/4 v0, 0x1

    return v0
.end method
