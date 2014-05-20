.class final Lcom/tencent/mm/ui/contact/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ca;


# instance fields
.field final synthetic gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ea;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uW()V
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ea;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->C(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ea;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->C(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1422
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ea;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->D(Lcom/tencent/mm/ui/contact/SelectContactUI;)Landroid/app/ProgressDialog;

    .line 1424
    :cond_0
    return-void
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ea;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/SelectContactUI;->B(Lcom/tencent/mm/ui/contact/SelectContactUI;)Z

    move-result v0

    return v0
.end method
