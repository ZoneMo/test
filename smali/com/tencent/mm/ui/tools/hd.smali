.class final Lcom/tencent/mm/ui/tools/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic eNt:Lcom/tencent/mm/ui/base/ar;

.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;Lcom/tencent/mm/ui/base/ar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2989
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hd;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/hd;->eNt:Lcom/tencent/mm/ui/base/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hd;->eNt:Lcom/tencent/mm/ui/base/ar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ar;->dismiss()V

    .line 2994
    return-void
.end method
