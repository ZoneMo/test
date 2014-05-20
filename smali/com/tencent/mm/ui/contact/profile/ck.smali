.class final Lcom/tencent/mm/ui/contact/profile/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gXl:Lcom/tencent/mm/ui/contact/profile/cb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/ck;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ck;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->b(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/ck;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    iget-object v1, v1, Lcom/tencent/mm/ui/contact/profile/cb;->gXk:Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;->a(Lcom/tencent/mm/ui/contact/profile/NormalUserFooterPreference;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/base/a/a;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 566
    return-void
.end method
