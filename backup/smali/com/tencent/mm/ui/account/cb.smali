.class final Lcom/tencent/mm/ui/account/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic grc:Lcom/tencent/mm/ui/account/LoginHistoryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/LoginHistoryUI;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/tencent/mm/ui/account/cb;->grc:Lcom/tencent/mm/ui/account/LoginHistoryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/cb;->grc:Lcom/tencent/mm/ui/account/LoginHistoryUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/LoginHistoryUI;->b(Lcom/tencent/mm/ui/account/LoginHistoryUI;)V

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
