.class final Lcom/tencent/mm/ui/base/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fcH:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic fcI:Z

.field final synthetic gyM:Lcom/tencent/mm/ui/base/x;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/x;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/tencent/mm/ui/base/y;->gyM:Lcom/tencent/mm/ui/base/x;

    iput-object p2, p0, Lcom/tencent/mm/ui/base/y;->fcH:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p3, p0, Lcom/tencent/mm/ui/base/y;->fcI:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tencent/mm/ui/base/y;->fcH:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/ui/base/y;->fcH:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/y;->gyM:Lcom/tencent/mm/ui/base/x;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/y;->fcI:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/tencent/mm/ui/base/y;->gyM:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 228
    :cond_1
    return-void
.end method
