.class final Lcom/tencent/mm/ui/contact/profile/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gXv:Lcom/tencent/mm/ui/contact/profile/dh;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/profile/dh;)V
    .locals 0
    .parameter

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/di;->gXv:Lcom/tencent/mm/ui/contact/profile/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/di;->gXv:Lcom/tencent/mm/ui/contact/profile/dh;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/profile/dh;->a(Lcom/tencent/mm/ui/contact/profile/dh;)V

    .line 1121
    return-void
.end method
