.class final Lcom/tencent/mm/ui/applet/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic gxM:Lcom/tencent/mm/ui/applet/u;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/applet/u;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/mm/ui/applet/v;->gxM:Lcom/tencent/mm/ui/applet/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/v;->gxM:Lcom/tencent/mm/ui/applet/u;

    iget-object v1, p0, Lcom/tencent/mm/ui/applet/v;->gxM:Lcom/tencent/mm/ui/applet/u;

    invoke-static {v1}, Lcom/tencent/mm/ui/applet/u;->a(Lcom/tencent/mm/ui/applet/u;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/applet/v;->gxM:Lcom/tencent/mm/ui/applet/u;

    invoke-static {v2}, Lcom/tencent/mm/ui/applet/u;->a(Lcom/tencent/mm/ui/applet/u;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0709bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/applet/v;->gxM:Lcom/tencent/mm/ui/applet/u;

    invoke-static {v2}, Lcom/tencent/mm/ui/applet/u;->a(Lcom/tencent/mm/ui/applet/u;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0709ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/applet/w;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/applet/w;-><init>(Lcom/tencent/mm/ui/applet/v;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/applet/u;->a(Lcom/tencent/mm/ui/applet/u;Lcom/tencent/mm/ui/base/ch;)Lcom/tencent/mm/ui/base/ch;

    .line 46
    const/4 v0, 0x0

    return v0
.end method
