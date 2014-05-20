.class final Lcom/tencent/mm/ui/base/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gCL:Lcom/tencent/mm/ui/base/ce;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/ce;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tencent/mm/ui/base/ds;->gCL:Lcom/tencent/mm/ui/base/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tencent/mm/ui/base/ds;->gCL:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 288
    return-void
.end method
