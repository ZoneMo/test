.class final Lcom/tencent/mm/ui/contact/profile/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gXw:Lcom/tencent/mm/ui/contact/profile/dm;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/dn;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/dn;->gXw:Lcom/tencent/mm/ui/contact/profile/dm;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/profile/dm;->aLl()V

    .line 1369
    return-void
.end method
