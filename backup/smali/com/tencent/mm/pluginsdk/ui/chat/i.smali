.class final Lcom/tencent/mm/pluginsdk/ui/chat/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic fpP:Lcom/tencent/mm/pluginsdk/ui/chat/g;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/g;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/i;->fpP:Lcom/tencent/mm/pluginsdk/ui/chat/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 655
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 656
    return-void
.end method
