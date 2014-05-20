.class final Lcom/tencent/mm/ui/contact/profile/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ca;


# instance fields
.field final synthetic gWh:Lcom/tencent/mm/ui/contact/profile/w;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/w;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/z;->gWh:Lcom/tencent/mm/ui/contact/profile/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uW()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/z;->gWh:Lcom/tencent/mm/ui/contact/profile/w;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/w;->d(Lcom/tencent/mm/ui/contact/profile/w;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/z;->gWh:Lcom/tencent/mm/ui/contact/profile/w;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/w;->d(Lcom/tencent/mm/ui/contact/profile/w;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 330
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/z;->gWh:Lcom/tencent/mm/ui/contact/profile/w;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/w;->e(Lcom/tencent/mm/ui/contact/profile/w;)Lcom/tencent/mm/ui/base/ch;

    .line 332
    :cond_0
    return-void
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/z;->gWh:Lcom/tencent/mm/ui/contact/profile/w;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/w;->c(Lcom/tencent/mm/ui/contact/profile/w;)Z

    move-result v0

    return v0
.end method
