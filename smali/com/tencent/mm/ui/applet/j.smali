.class final Lcom/tencent/mm/ui/applet/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gxr:Lcom/tencent/mm/ui/applet/SecurityImage;

.field final synthetic gxs:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/applet/SecurityImage;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tencent/mm/ui/applet/j;->gxr:Lcom/tencent/mm/ui/applet/SecurityImage;

    iput-object p2, p0, Lcom/tencent/mm/ui/applet/j;->gxs:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/j;->gxr:Lcom/tencent/mm/ui/applet/SecurityImage;

    invoke-static {}, Lcom/tencent/mm/ui/applet/SecurityImage;->onStop()V

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/ui/applet/j;->gxs:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 196
    return-void
.end method
