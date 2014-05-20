.class final Lcom/tencent/mm/ui/account/id;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gtf:Lcom/tencent/mm/ui/account/ic;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/ic;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tencent/mm/ui/account/id;->gtf:Lcom/tencent/mm/ui/account/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/mm/ui/account/id;->gtf:Lcom/tencent/mm/ui/account/ic;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/ic;->gte:Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifyUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/RegByMobileVoiceVerifyUI;->finish()V

    .line 161
    return-void
.end method
