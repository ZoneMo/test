.class final Lcom/tencent/mm/ui/contact/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gSe:Lcom/tencent/mm/ui/contact/a;

.field final synthetic gSf:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/a;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/c;->gSe:Lcom/tencent/mm/ui/contact/a;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/c;->gSf:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/c;->gSe:Lcom/tencent/mm/ui/contact/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/c;->gSf:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/a;->h(Landroid/database/Cursor;)V

    .line 529
    return-void
.end method
