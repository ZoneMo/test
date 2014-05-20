.class final Lcom/tencent/mm/plugin/whatsnew/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/h;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/h;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->o(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 654
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/h;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->o(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 655
    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/h;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;I)V

    .line 656
    return-void
.end method
