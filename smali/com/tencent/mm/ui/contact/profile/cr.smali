.class final Lcom/tencent/mm/ui/contact/profile/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gXl:Lcom/tencent/mm/ui/contact/profile/cb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/cr;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 686
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/cr;->gXl:Lcom/tencent/mm/ui/contact/profile/cb;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/cb;->c(Lcom/tencent/mm/ui/contact/profile/cb;)V

    .line 687
    return-void
.end method
