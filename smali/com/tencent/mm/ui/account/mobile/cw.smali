.class final Lcom/tencent/mm/ui/account/mobile/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cmw:Lcom/tencent/mm/n/x;

.field final synthetic gwA:Ljava/lang/Boolean;

.field final synthetic gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

.field final synthetic gwy:Ljava/lang/String;

.field final synthetic gwz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/mobile/cn;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/n/x;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwy:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwz:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/ui/account/mobile/cw;->cmw:Lcom/tencent/mm/n/x;

    iput-object p5, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwA:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x7e

    iget-object v2, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 459
    new-instance v0, Lcom/tencent/mm/modelsimple/ad;

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwy:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwz:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    iget-object v6, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-static {v6}, Lcom/tencent/mm/ui/account/mobile/cn;->a(Lcom/tencent/mm/ui/account/mobile/cn;)Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->bTR:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-static {v7}, Lcom/tencent/mm/ui/account/mobile/cn;->b(Lcom/tencent/mm/ui/account/mobile/cn;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-static {v8}, Lcom/tencent/mm/ui/account/mobile/cn;->a(Lcom/tencent/mm/ui/account/mobile/cn;)Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    move-result-object v8

    iget v8, v8, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->cxC:I

    const-string v9, ""

    iget-object v10, p0, Lcom/tencent/mm/ui/account/mobile/cw;->cmw:Lcom/tencent/mm/n/x;

    check-cast v10, Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v10}, Lcom/tencent/mm/modelsimple/ad;->zS()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-static {v11}, Lcom/tencent/mm/ui/account/mobile/cn;->a(Lcom/tencent/mm/ui/account/mobile/cn;)Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    move-result-object v11

    iget-object v11, v11, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->gof:Lcom/tencent/mm/ui/applet/SecurityImage;

    invoke-virtual {v11}, Lcom/tencent/mm/ui/applet/SecurityImage;->aGu()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwA:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-direct/range {v0 .. v13}, Lcom/tencent/mm/modelsimple/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 462
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 464
    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/mobile/cn;->a(Lcom/tencent/mm/ui/account/mobile/cn;)Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-static {v2}, Lcom/tencent/mm/ui/account/mobile/cn;->a(Lcom/tencent/mm/ui/account/mobile/cn;)Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/mobile/cn;->a(Lcom/tencent/mm/ui/account/mobile/cn;)Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    move-result-object v3

    sget v4, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->getString(I)Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-static {v3}, Lcom/tencent/mm/ui/account/mobile/cn;->a(Lcom/tencent/mm/ui/account/mobile/cn;)Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;

    move-result-object v3

    sget v4, Lcom/tencent/mm/n;->bvS:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/account/mobile/cx;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/account/mobile/cx;-><init>(Lcom/tencent/mm/ui/account/mobile/cw;Lcom/tencent/mm/modelsimple/ad;)V

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ui/account/mobile/MobileVerifyUI;->cIr:Landroid/app/ProgressDialog;

    .line 474
    return-void
.end method
