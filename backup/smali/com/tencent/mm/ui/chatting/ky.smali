.class final Lcom/tencent/mm/ui/chatting/ky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic gRg:Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ky;->gRg:Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ky;->gRg:Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;->finish()V

    .line 34
    const/4 v0, 0x1

    return v0
.end method
