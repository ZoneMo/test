.class final Lcom/tencent/mm/plugin/base/stub/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/base/stub/OAuthUI;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/mm/plugin/base/stub/i;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/i;->cOo:Lcom/tencent/mm/plugin/base/stub/OAuthUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/base/stub/OAuthUI;->finish()V

    .line 102
    const/4 v0, 0x1

    return v0
.end method
