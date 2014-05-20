.class final Lcom/tencent/mm/ui/contact/profile/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ca;


# instance fields
.field final synthetic cWC:Landroid/app/ProgressDialog;

.field final synthetic gXl:Lcom/tencent/mm/ui/contact/profile/cb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cb;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/cj;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/cj;->cWC:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uW()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cj;->cWC:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cj;->cWC:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 991
    :cond_0
    return-void
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cj;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/cb;->e(Lcom/tencent/mm/ui/contact/profile/cb;)Z

    move-result v0

    return v0
.end method
