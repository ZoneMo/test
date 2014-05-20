.class final Lcom/tencent/mm/ui/applet/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gxQ:Lcom/tencent/mm/ui/applet/y;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/applet/y;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/mm/ui/applet/z;->gxQ:Lcom/tencent/mm/ui/applet/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/applet/z;->gxQ:Lcom/tencent/mm/ui/applet/y;

    iget-object v1, v1, Lcom/tencent/mm/ui/applet/y;->gxP:Lcom/tencent/mm/ui/applet/x;

    invoke-static {v1}, Lcom/tencent/mm/ui/applet/x;->b(Lcom/tencent/mm/ui/applet/x;)Lcom/tencent/mm/modelsimple/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/z;->gxQ:Lcom/tencent/mm/ui/applet/y;

    iget-object v0, v0, Lcom/tencent/mm/ui/applet/y;->gxP:Lcom/tencent/mm/ui/applet/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/applet/x;->a(Lcom/tencent/mm/ui/applet/x;Lcom/tencent/mm/ui/base/ch;)Lcom/tencent/mm/ui/base/ch;

    .line 43
    return-void
.end method
