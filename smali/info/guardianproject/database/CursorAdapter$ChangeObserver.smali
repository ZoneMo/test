.class Linfo/guardianproject/database/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Linfo/guardianproject/database/CursorAdapter;


# direct methods
.method public constructor <init>(Linfo/guardianproject/database/CursorAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Linfo/guardianproject/database/CursorAdapter$ChangeObserver;->this$0:Linfo/guardianproject/database/CursorAdapter;

    .line 344
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 345
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter$ChangeObserver;->this$0:Linfo/guardianproject/database/CursorAdapter;

    invoke-virtual {v0}, Linfo/guardianproject/database/CursorAdapter;->onContentChanged()V

    .line 355
    return-void
.end method
