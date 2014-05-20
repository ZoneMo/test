.class final Lcom/tencent/mm/ui/contact/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gUO:Landroid/database/Cursor;

.field final synthetic gUP:Lcom/tencent/mm/ui/contact/db;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/db;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/dc;->gUP:Lcom/tencent/mm/ui/contact/db;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/dc;->gUO:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dc;->gUP:Lcom/tencent/mm/ui/contact/db;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/dc;->gUO:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/db;->h(Landroid/database/Cursor;)V

    .line 606
    return-void
.end method
