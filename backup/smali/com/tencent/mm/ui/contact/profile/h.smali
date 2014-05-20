.class final Lcom/tencent/mm/ui/contact/profile/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ca;


# instance fields
.field final synthetic gWd:Lcom/tencent/mm/ui/contact/profile/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/e;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/h;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uW()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/h;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->n(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/h;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->n(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 798
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/h;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->o(Lcom/tencent/mm/ui/contact/profile/e;)Lcom/tencent/mm/ui/base/ch;

    .line 800
    :cond_0
    return-void
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/h;->gWd:Lcom/tencent/mm/ui/contact/profile/e;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/e;->m(Lcom/tencent/mm/ui/contact/profile/e;)Z

    move-result v0

    return v0
.end method
