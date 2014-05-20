.class Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Linfo/guardianproject/database/CursorAdapter;


# direct methods
.method private constructor <init>(Linfo/guardianproject/database/CursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;->this$0:Linfo/guardianproject/database/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Linfo/guardianproject/database/CursorAdapter;Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-direct {p0, p1}, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;-><init>(Linfo/guardianproject/database/CursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;->this$0:Linfo/guardianproject/database/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    .line 362
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;->this$0:Linfo/guardianproject/database/CursorAdapter;

    invoke-virtual {v0}, Linfo/guardianproject/database/CursorAdapter;->notifyDataSetChanged()V

    .line 363
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;->this$0:Linfo/guardianproject/database/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Linfo/guardianproject/database/CursorAdapter;->mDataValid:Z

    .line 368
    iget-object v0, p0, Linfo/guardianproject/database/CursorAdapter$MyDataSetObserver;->this$0:Linfo/guardianproject/database/CursorAdapter;

    invoke-virtual {v0}, Linfo/guardianproject/database/CursorAdapter;->notifyDataSetInvalidated()V

    .line 369
    return-void
.end method
