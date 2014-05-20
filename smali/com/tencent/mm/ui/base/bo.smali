.class final Lcom/tencent/mm/ui/base/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/MMListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/tencent/mm/ui/base/bo;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 955
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/tencent/mm/ui/base/bo;->gAy:Lcom/tencent/mm/ui/base/MMListPopupWindow;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/MMListPopupWindow;->a(Lcom/tencent/mm/ui/base/MMListPopupWindow;)Lcom/tencent/mm/ui/base/bp;

    move-result-object v0

    .line 958
    if-eqz v0, :cond_0

    .line 959
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/bp;->a(Lcom/tencent/mm/ui/base/bp;Z)Z

    .line 962
    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    return-void
.end method
