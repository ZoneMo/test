.class final Lcom/tencent/mm/ui/account/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gss:Lcom/tencent/mm/ui/account/RegByFacebookSetPwdUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/RegByFacebookSetPwdUI;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tencent/mm/ui/account/gd;->gss:Lcom/tencent/mm/ui/account/RegByFacebookSetPwdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/account/gd;->gss:Lcom/tencent/mm/ui/account/RegByFacebookSetPwdUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/RegByFacebookSetPwdUI;->finish()V

    .line 103
    return-void
.end method
